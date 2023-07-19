<?php
/**
 * League.Uri (http://uri.thephpleague.com)
 *
 * @package   League.uri
 * @author    Ignace Nyamagana Butera <nyamsprod@gmail.com>
 * @copyright 2013-2015 Ignace Nyamagana Butera
 * @license   https://github.com/thephpleague/uri/blob/master/LICENSE (MIT License)
 * @version   4.1.0
 * @link      https://github.com/thephpleague/uri/
 */
namespace League\Uri\Modifiers;

use League\Uri\Modifiers\Filters\Segment;

/**
 * Append a segment to the URI path
 *
 * @package League.uri
 * @author  Ignace Nyamagana Butera <nyamsprod@gmail.com>
 * @since   4.0.0
 */
class AppendSegment extends AbstractPathModifier
{
    use Segment;

    /**
     * New instance
     *
     * @param string $segment
     */
    public function __construct($segment)
    {
        $this->segment = $this->filterSegment($segment);
    }

    /**
     * Modify a URI part
     *
     * @param string $str the URI part string representation
     *
     * @return string the modified URI part string representation
     */
    protected function modify($str)
    {
        return (string) $this->segment
            ->modify($str)
            ->append((string) $this->segment);
    }
}
